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


# # DB ENGINE

# ## cree moteur
# vault secrets enable database

# ## POSTGRES 


# ### cree connection vers db
# vault write database/config/postgresql-test \
#     plugin_name=postgresql-database-plugin \
#     allowed_roles="dev-role,preprod-role" \
#     connection_url="postgresql://{{username}}:{{password}}@postgresql.demo-vault.svc.cluster.local:5432/sampledb?sslmode=disable" \
#     username="test" \
#     password="test"

# ### cree un role
# vault write database/roles/dev-role \
#     db_name=postgresql-test \
#     creation_statements="CREATE ROLE \"{{name}}\" WITH LOGIN PASSWORD '{{password}}' VALID UNTIL '{{expiration}}'; \
#         GRANT SELECT ON ALL TABLES IN SCHEMA public TO \"{{name}}\";" \
#     default_ttl="1h" \
#     max_ttl="24h"
# vault write database/roles/preprod-role \
#     db_name=postgresql-test \
#     creation_statements="CREATE ROLE \"{{name}}\" WITH LOGIN PASSWORD '{{password}}' VALID UNTIL '{{expiration}}'; \
#         GRANT SELECT ON ALL TABLES IN SCHEMA public TO \"{{name}}\";" \
#     default_ttl="30m" \
#     max_ttl="12h"

# ### utiliser la generationn de mdp pour avoir un nouveau pwd
# vault read database/creds/dev-role
# vault read database/creds/preprod-role


# ## MARIADB

# ### cree connection vers db
# vault write database/config/mariadb-test \
#     plugin_name=mysql-database-plugin \
#     connection_url="{{username}}:{{password}}@tcp(mariadb.demo-vault.svc.cluster.local:3306)/" \
#     allowed_roles="mariadb-dev-role,mariadb-preprod-role" \
#     username="root" \
#     password="HMq5dbGi7JYiLoNo"

# ### cree un role
# vault write database/roles/mariadb-dev-role \
#     db_name=mariadb-test \
#     creation_statements="CREATE USER '{{name}}'@'%' IDENTIFIED BY '{{password}}';GRANT SELECT ON *.* TO '{{name}}'@'%';" \
#     default_ttl="1h" \
#     max_ttl="24h"
# vault write database/roles/mariadb-preprod-role \
#     db_name=mariadb-test \
#     creation_statements="CREATE USER '{{name}}'@'%' IDENTIFIED BY '{{password}}';GRANT SELECT ON *.* TO '{{name}}'@'%';" \
#     default_ttl="30m" \
#     max_ttl="12h"


# ### utiliser la generationn de mdp pour avoir un nouveau pwd
# vault read database/creds/mariadb-dev-role
# vault read database/creds/mariadb-preprod-role


# ### Check de la generation  (sur container mariadb)

# mysql -u root -p -h mariadb 
# mysql> use mysql; SELECT user FROM user;  