#!/bin/bash
source build/envsetup.sh
git clone https://github.com/NopeNopeGuy/reclient --depth=1
export USE_RBE=1
export RBE_DIR=$(pwd)/reclient
export NINJA_REMOTE_NUM_JOBS=8
export RBE_use_unified_downloads=true
export RBE_use_unified_uploads=true
export RBE_remote_accept_cache=true
export RBE_remote_update_cache=true
export RBE_R8_EXEC_STRATEGY=local
export RBE_D8_EXEC_STRATEGY=local
export RBE_JAVAC_EXEC_STRATEGY=local
export RBE_JAR_EXEC_STRATEGY=local
export RBE_ZIP_EXEC_STRATEGY=local
export RBE_TURBINE_EXEC_STRATEGY=local
export RBE_SIGNAPK_EXEC_STRATEGY=local
export RBE_CXX_EXEC_STRATEGY=local
export RBE_CXX_LINKS_EXEC_STRATEGY=local
export RBE_ABI_LINKER_EXEC_STRATEGY=local
export RBE_CLANG_TIDY_EXEC_STRATEGY=local
export RBE_METALAVA_EXEC_STRATEGY=local
export RBE_LINT_EXEC_STRATEGY=local
export RBE_R8=1
export RBE_D8=1
export RBE_JAVAC=1
export RBE_JAR=1
export RBE_ZIP=1
export RBE_TURBINE=1
export RBE_SIGNAPK=1
export RBE_CXX_LINKS=1
export RBE_CXX=1
export RBE_ABI_LINKER=1
export RBE_CLANG_TIDY=1
export RBE_METALAVA=1
export RBE_LINT=1
export RBE_JAVA_POOL=default
export RBE_METALAVA_POOL=default
export RBE_LINT_POOL=default

export CACHE_ADDRESS=cas-aditya-singh-a5bbbt.build-faster.nativelink.net:443
export TLS_CLIENT_AUTH_CERT=client.crt
export TLS_CLIENT_AUTH_KEY=client.key

# Leave below as is
export RBE_service=${CACHE_ADDRESS}
export RBE_cas_service=${CACHE_ADDRESS}
export RBE_reclient_timeout=60m
export RBE_instance=
export RBE_exec_timeout=4m
export RBE_alsologtostderr=true
export RBE_service_no_security=false
export RBE_local_resource_fraction=0.00001
export RBE_automatic_auth=false
export RBE_gcert_refresh_timeout=20
export RBE_compression_threshold=-1
export RBE_metrics_namespace=main
export RBE_platform=
export RBE_experimental_credentials_helper=
export RBE_experimental_credentials_helper_args=
export RBE_log_http_calls=true
export RBE_use_rpc_credentials=true
export RBE_exec_strategy=local
export RBE_remote_disabled=false
export RBE_tls_client_auth_cert=${TLS_CLIENT_AUTH_CERT}
export RBE_tls_client_auth_key=${TLS_CLIENT_AUTH_KEY}
export RBE_service_no_auth=true
export RBE_use_application_default_credentials=true

breakfast gsi_arm64 userdebug
mka systemimage -j16
