vcpkg_from_github (
	OUT_SOURCE_PATH SOURCE_PATH
	REPO blAs1N/BSBase
	REF 42d52294ad0797ed8b4bddad19d44122b6e88c20
	SHA512 
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