cmd_Release/obj.target/node_rpi/src/rpi.o := cc -o Release/obj.target/node_rpi/src/rpi.o ../src/rpi.c '-DNODE_GYP_MODULE_NAME=node_rpi' '-DUSING_UV_SHARED=1' '-DUSING_V8_SHARED=1' '-DV8_DEPRECATION_WARNINGS=1' '-DV8_DEPRECATION_WARNINGS' '-DV8_IMMINENT_DEPRECATION_WARNINGS' '-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=64' '-DOPENSSL_NO_PINSHARED' '-DOPENSSL_THREADS' '-DBUILDING_NODE_EXTENSION' -I/home/pi/.cache/node-gyp/12.13.0/include/node -I/home/pi/.cache/node-gyp/12.13.0/src -I/home/pi/.cache/node-gyp/12.13.0/deps/openssl/config -I/home/pi/.cache/node-gyp/12.13.0/deps/openssl/openssl/include -I/home/pi/.cache/node-gyp/12.13.0/deps/uv/include -I/home/pi/.cache/node-gyp/12.13.0/deps/zlib -I/home/pi/.cache/node-gyp/12.13.0/deps/v8/include -I../../nan  -fPIC -pthread -Wall -Wextra -Wno-unused-parameter -Wno-cast-function-type -O3 -fno-omit-frame-pointer  -MMD -MF ./Release/.deps/Release/obj.target/node_rpi/src/rpi.o.d.raw   -c
Release/obj.target/node_rpi/src/rpi.o: ../src/rpi.c ../src/rpi.h
../src/rpi.c:
../src/rpi.h:
