package main

import (
	"bufio"
	"crypto/sha256"
	"fmt"
	"encoding/hex"
	"encoding/base64"
	"github.com/ttacon/chalk"
	"golang.org/x/crypto/bcrypt"
	"os"
	"path/filepath"
	"runtime"
	"strings"
)


var (
	username string
	password string
	filename string
	newline  string
)


type color int

const (
	blue color = iota // 0
	green             // 1
	red               // 2
	yellow            // 3
	none              // 4
)


func (color color) String() string {

	colors := [...]string{
		"blue",
		"green",
		"red",
		"yellow",
		"none"}

	return colors[color]

}


func printColorizedOnLinux(message string, color color) {


	if runtime.GOOS == "windows" {
		fmt.Println(message)
	} else {
		colorizeBlue := chalk.Blue.NewStyle().
			WithBackground(chalk.ResetColor).
			WithTextStyle(chalk.Bold).
			Style

		colorizeGreen := chalk.Green.NewStyle().
			WithBackground(chalk.ResetColor).
			WithTextStyle(chalk.Bold).
			Style

		colorizeRed := chalk.Red.NewStyle().
			WithBackground(chalk.ResetColor).
			WithTextStyle(chalk.Bold).
			Style

		colorizeYellow := chalk.Yellow.NewStyle().
			WithBackground(chalk.ResetColor).
			WithTextStyle(chalk.Bold).
			Style

		switch color.String() {
		case "blue":
			fmt.Printf(colorizeBlue(message))
		case "green":
			fmt.Printf(colorizeGreen(message))
		case "red":
			fmt.Printf(colorizeRed(message))
		case "yellow":
			fmt.Printf(colorizeYellow(message))
		case "none":
			fmt.Printf(message)
		}
	}
}

func hashPassword(password string) (string, error) {

	passwordByte := []byte(password)
	sha256Hash := sha256.New()
	_, err := sha256Hash.Write(passwordByte)
	check(err)
	sha := sha256Hash.Sum(nil)

	shaHex := hex.EncodeToString(sha)

	shaEnc := base64.StdEncoding.EncodeToString([]byte(shaHex))

	passwordBytesProcessed, err := bcrypt.GenerateFromPassword([]byte(shaEnc), 10)

	return string(passwordBytesProcessed), err
}

func check(e error) {
	if e != nil {
		panic(e)
	}
}


func main() {

	newline = "\n"
	if runtime.GOOS == "windows" {
		newline = "\r\n"
	}

	reader := bufio.NewReader(os.Stdin)

	printColorizedOnLinux(newline + newline + "createCredentials:" + newline + newline, blue)

	//// username
	printColorizedOnLinux("Please enter your name" + newline, yellow)
	fmt.Print("-> ")
	input, _ := reader.ReadString('\n')

	username = strings.Replace(input, newline, "", -1)                              //// convert CRLF to LF

	//// password
	printColorizedOnLinux(newline + "Please enter your desired long password or passphrase" + newline, yellow)
	fmt.Print("-> ")
	input2, _ := reader.ReadString('\n')

	password = strings.Replace(input2, newline, "", -1)                             //// convert CRLF to LF


	hash, err := hashPassword(password)
	check(err)

	//// output
	if runtime.GOOS == "windows" {
		printColorizedOnLinux(newline + username + ":", green)
	} else {
		printColorizedOnLinux(newline + username + ":" + newline, green)
	}
	printColorizedOnLinux("  hashed_password: ", green)
	printColorizedOnLinux("\"" + hash + "\"", none)


	//// persistence
	folder := "./credentials"
	if _, err := os.Stat(folder); os.IsNotExist(err) {
		os.Mkdir(folder, 0755)
	}


	filename := username + ".yaml"
	filepath := filepath.Join(folder, filename)
	f, err := os.Create(filepath)
	check(err)


	err = f.Sync()
	check(err)

	w := bufio.NewWriter(f)
	_, err = w.WriteString(username + ":\n")
	_, err = w.WriteString("  hashed_password: \"" + hash + "\"\n")
	check(err)
	printColorizedOnLinux(newline + newline + "your credentials have been written to ", blue)
	printColorizedOnLinux("./" + filepath + newline, green)
	fmt.Println()


	err = w.Flush()
	check(err)

	err = f.Close()
	check(err)

	if runtime.GOOS == "windows" {
		_, _ = reader.ReadString('\n')
	}
}
