riot-im
=======
Communicate the way you want with Riot - a universal secure chat app entirely under your control.

Current chart version is `0.2.5`

Source code can be found [here](https://about.riot.im/)



## Chart Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| configjson.brand | string | `"Riot"` |  |
| configjson.bug_report_endpoint_url | string | `"https://riot.im/bugreports/submit"` |  |
| configjson.defaultCountryCode | string | `"GB"` |  |
| configjson.default_federate | bool | `true` |  |
| configjson.default_theme | string | `"light"` |  |
| configjson.disable_3pid_login | bool | `false` |  |
| configjson.disable_custom_urls | bool | `false` |  |
| configjson.disable_guests | bool | `false` |  |
| configjson.disable_login_language_selector | bool | `false` |  |
| configjson.enable_presence_by_hs_url."https://matrix-client.matrix.org" | bool | `false` |  |
| configjson.enable_presence_by_hs_url."https://matrix.org" | bool | `false` |  |
| configjson.features.feature_custom_status | string | `"labs"` |  |
| configjson.features.feature_custom_tags | string | `"labs"` |  |
| configjson.features.feature_pinning | string | `"labs"` |  |
| configjson.features.feature_state_counters | string | `"labs"` |  |
| configjson.integrations_jitsi_widget_url | string | `"https://scalar.vector.im/api/widgets/jitsi.html"` |  |
| configjson.integrations_rest_url | string | `"https://scalar.vector.im/api"` |  |
| configjson.integrations_ui_url | string | `"https://scalar.vector.im/"` |  |
| configjson.integrations_widgets_urls[0] | string | `"https://scalar.vector.im/_matrix/integrations/v1"` |  |
| configjson.integrations_widgets_urls[1] | string | `"https://scalar.vector.im/api"` |  |
| configjson.integrations_widgets_urls[2] | string | `"https://scalar-staging.vector.im/_matrix/integrations/v1"` |  |
| configjson.integrations_widgets_urls[3] | string | `"https://scalar-staging.vector.im/api"` |  |
| configjson.integrations_widgets_urls[4] | string | `"https://scalar-staging.riot.im/scalar/api"` |  |
| configjson.piwik.siteId | int | `1` |  |
| configjson.piwik.url | string | `"https://piwik.riot.im/"` |  |
| configjson.piwik.whitelistedHSUrls[0] | string | `"https://matrix.org"` |  |
| configjson.piwik.whitelistedISUrls[0] | string | `"https://vector.im"` |  |
| configjson.piwik.whitelistedISUrls[1] | string | `"https://matrix.org"` |  |
| configjson.roomDirectory.servers[0] | string | `"matrix.org"` |  |
| configjson.settingDefaults.breadcrumbs | bool | `true` |  |
| configjson.showLabsSettings | bool | `false` |  |
| configjson.welcomeUserId | string | `"@riot-bot:matrix.org"` |  |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"vectorim/riot-web"` |  |
| image.tag | string | `"{{ .Chart.AppVersion }}"` |  |
| imagePullSecrets | list | `[]` |  |
| ingress.annotations | object | `{}` |  |
| ingress.enabled | bool | `false` |  |
| ingress.hosts[0].host | string | `"chart-example.local"` |  |
| ingress.hosts[0].paths | list | `[]` |  |
| ingress.tls | list | `[]` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| replicaCount | int | `1` |  |
| resources | object | `{}` |  |
| securityContext | object | `{}` |  |
| service.port | int | `80` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `nil` |  |
| tolerations | list | `[]` |  |
