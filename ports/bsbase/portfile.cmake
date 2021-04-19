vcpkg_from_github (
	OUT_SOURCE_PATH SOURCE_PATH
	REPO blAs1N/BSBase
	REF 17c4a743e9aac0681c4247f2c4a589c17f570f2a
	SHA512 7c997219667046635b86d4006eaca19c7665661a2f93c0fd8b72dfee9825eb2c67f97818d55d6910e83d1003f262ca8b418db757c8ff12810a95027fea31dd1b
	HEAD_REF master
)

vcpkg_configure_cmake (
	SOURCE_PATH "${SOURCE_PATH}"
	PREFER_NINJA
)

vcpkg_install_cmake ()
vcpkg_cmake_config_fixup ()

message ("${CURRENT_PACKAGES_DIR}")
# file (REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

file (
	INSTALL "${SOURCE_PATH}/LICENSE"
	DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}"
	RENAME copyright
)