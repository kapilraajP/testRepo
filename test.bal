import ballerina/io;
import ballerinax/redis;

redis:ConnectionConfig redisConfig = {
    host: "localhost",
    password: "",
    options: {
        connectionPooling: true,
        isClusterConnection: false,
        ssl: false,
        startTls: false,
        verifyPeer: false,
        connectionTimeout: 500
    }
};

final redis:Client conn = check new (redisConfig);

public function main() returns error? {
    string ping = check conn->ping();
    io:println(ping);
}
