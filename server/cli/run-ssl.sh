/opt/jboss/keycloak/bin/jboss-cli.sh --commands="embed-server, /core-service=management/security-realm=ApplicationRealm/server-identity=ssl:write-attribute(name=keystore-path, value=keystore/server.jks)"
/opt/jboss/keycloak/bin/jboss-cli.sh --commands="embed-server, /core-service=management/security-realm=ApplicationRealm/server-identity=ssl:write-attribute(name=alias, value=${KEYSTORE_ALIAS})"
/opt/jboss/keycloak/bin/jboss-cli.sh --commands="embed-server, /core-service=management/security-realm=ApplicationRealm/server-identity=ssl:write-attribute(name=keystore-password, value=${KEYSTORE_PASSWORD})"
/opt/jboss/keycloak/bin/jboss-cli.sh --commands="embed-server, /core-service=management/security-realm=ApplicationRealm/server-identity=ssl:write-attribute(name=key-password, value=${KEY_PASSWORD})"
/opt/jboss/keycloak/bin/jboss-cli.sh --commands="embed-server, /core-service=management/security-realm=ApplicationRealm/server-identity=ssl:undefine-attribute(name=generate-self-signed-certificate-host)"
start-keycloak.sh -b 0.0.0.0
