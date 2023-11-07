# Gremlin Server for AWS Neptune

Wrapper of Gremlin Server allowing to be used as an AWS Neptune replacement, mainly used for testing.
The code and inspiration taken from 
[this AWS blog post](https://aws.amazon.com/blogs/database/automated-testing-of-amazon-neptune-data-access-with-apache-tinkerpop-gremlin/).

The current image is running Gremlin Server 3.6.2 which is compatible with Amazon Neptune Engine Version 1.2.1.0. 
Besides that, 3.6.4 , 3.6.5 and 3.6 versions are also built.

## Usage
To run locally:
```shell
docker run -p 8182:8182 ghcr.io/koble-ai/neptune-local:3.6.2
```

For testing against it with tools like testcontainers:

```typescript
 container = await new GenericContainer('ghcr.io/koble-ai/neptune-local:3.6.2')
            .withExposedPorts(8182)
            .withWaitStrategy(Wait.forLogMessage(/Channel started at port \d+/))
            .start();
```