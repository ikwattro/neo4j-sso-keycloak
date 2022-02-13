# Neo4j SSO with Keycloak

Uses Neo4j's own SSO capabilities.

## How-to Run

This repository contains a fuly pre-configured setup with Docker :

- Neo4j running on localhost:7474
- Keycloak running on localhost:8180
- Keycloak Realm and client for Neo4j pre-configured

### Launch Keycloak

Keycloak must be available before Neo4j

```
docker-compose --profile keycloak up -d
```

tail the logs until you see it's ready

```
docker-compose logs -f keycloak
```

### Launch Neo4j

When Keycloak is ready, launch Neo4j

```
docker-compose --profile neo4j up -d
```

### Login

Go to the Neo4j browser and login with `admin/password` credentials

---

Keycloak admin : `admin / admin123`