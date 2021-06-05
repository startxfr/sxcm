#!/bin/sh

vault secrets enable -path=demo-vault kv-v2
vault kv put demo-vault/frontend/config username="tata" password="toto"
vault policy write demo-vault-sa - <<EOF
path "demo-vault/data/frontend/config" {
    capabilities = ["read", "list"]
}
EOF

vault write auth/kubernetes/role/demo-vault \
        bound_service_account_names=vault-auth \
        bound_service_account_namespaces=demo-vault \
        policies=demo-vault-sa \
        ttl=24h
