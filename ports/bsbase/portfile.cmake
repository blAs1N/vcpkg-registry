vcpkg_from_github (
	OUT_SOURCE_PATH SOURCE_PATH
	REPO blAs1N/BSBase
	REF 17c4a743e9aac0681c4247f2c4a589c17f570f2a
	SHA512 4625710be086d0fd0f1bb8f77c056fa755dc2a51
	HEAD_REF master
)

vcpkg_configure_cmake (
	SOURCE_PATH "${SOURCE_PATH}"
	PREFER_NINJA
)

vcpkg_install_cmake ()
vcpkg_fixup_cmake_targets ()

file (REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

file (
	INSTALL "${SOURCE_PATH}/LICENSE"
	DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}"
	RENAME copyright
)