apiVersion: v1
data:
  user.key: LS0tLS1CRUdJTiBFQyBQUklWQVRFIEtFWS0tLS0tCk1IY0NBUUVFSU40T2MvN0xuTGtZTWZseDVqdDdTbzZTb2lmTEYwYngyOXJPTXAvL0krdlZvQW9HQ0NxR1NNNDkKQXdFSG9VUURRZ0FFRytEemFDcjFiM3AzTEJZRVZrVDFMT1FqWHY2QnN5MEdteWtHc1VUWUE4WDF3NWZ2MHpNOApDazI3ckdvaC9uNU5uVmlxYTFpMU50MDg1T3JzQzJMc2d3PT0KLS0tLS1FTkQgRUMgUFJJVkFURSBLRVktLS0tLQo=
kind: Secret
metadata:
  creationTimestamp: "2020-10-22T20:01:42Z"
  managedFields:
  - apiVersion: v1
    fieldsType: FieldsV1
    fieldsV1:
      f:data:
        .: {}
        f:user.key: {}
      f:metadata:
        f:ownerReferences:
          .: {}
          k:{"uid":"2e2b1760-4bb8-49aa-8690-c27265123732"}:
            .: {}
            f:apiVersion: {}
            f:kind: {}
            f:name: {}
            f:uid: {}
          k:{"uid":"3b8dda1f-ecfd-4d7a-8d23-dcf0f53d1cfa"}:
            .: {}
            f:apiVersion: {}
            f:kind: {}
            f:name: {}
            f:uid: {}
          k:{"uid":"4e5131ed-5d88-4cb3-8792-aa59055f80df"}:
            .: {}
            f:apiVersion: {}
            f:kind: {}
            f:name: {}
            f:uid: {}
          k:{"uid":"60a5682f-a3b0-46d9-87ca-fb1878dfc6a8"}:
            .: {}
            f:apiVersion: {}
            f:kind: {}
            f:name: {}
            f:uid: {}
          k:{"uid":"a041f30d-0e17-46e2-bbb3-a13b4c9b7759"}:
            .: {}
            f:apiVersion: {}
            f:kind: {}
            f:name: {}
            f:uid: {}
          k:{"uid":"c524c14e-02a0-4a18-ba97-a9379ed58584"}:
            .: {}
            f:apiVersion: {}
            f:kind: {}
            f:name: {}
            f:uid: {}
      f:type: {}
    manager: amb-sidecar
    operation: Update
    time: "2020-11-15T01:28:26Z"
  name: letsencrypt-fbeutelschiessgmail.com
  namespace: ambassador-hosts
  ownerReferences:
  - apiVersion: getambassador.io/v2
    kind: Host
    name: harbor
    uid: 3b8dda1f-ecfd-4d7a-8d23-dcf0f53d1cfa
  - apiVersion: getambassador.io/v2
    kind: Host
    name: dash
    uid: 60a5682f-a3b0-46d9-87ca-fb1878dfc6a8
  - apiVersion: getambassador.io/v2
    kind: Host
    name: harbor-notary
    uid: 4e5131ed-5d88-4cb3-8792-aa59055f80df
  - apiVersion: getambassador.io/v2
    kind: Host
    name: project
    uid: c524c14e-02a0-4a18-ba97-a9379ed58584
  - apiVersion: getambassador.io/v2
    kind: Host
    name: project-alt
    uid: a041f30d-0e17-46e2-bbb3-a13b4c9b7759
  - apiVersion: getambassador.io/v2
    kind: Host
    name: pgadmin
    uid: 2e2b1760-4bb8-49aa-8690-c27265123732
  resourceVersion: "4450180"
  selfLink: /api/v1/namespaces/ambassador-hosts/secrets/letsencrypt-fbeutelschiessgmail.com
  uid: a168e7f8-00a3-411a-949f-ea505a847cb2
type: Opaque
