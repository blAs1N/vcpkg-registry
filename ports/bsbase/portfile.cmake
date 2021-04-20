vcpkg_from_github (
	OUT_SOURCE_PATH SOURCE_PATH
	REPO blAs1N/BSBase
	REF 42d52294ad0797ed8b4bddad19d44122b6e88c20
	SHA512 7c997219667046635b86d4006eaca19c7665661a2f93c0fd8b72dfee9825eb2c67f97818d55d6910e83d1003f262ca8b418db757c8ff12810a95027fea31dd1b
	HEAD_REF master
)

vcpkg_configure_cmake (
	SOURCE_PATH "${SOURCE_PATH}"
	PREFER_NINJA
)

vcpkg_install_cmake ()
vcpkg_fixup_cmake_targets ()

file (REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug")

configure_file (
    "${SOURCE_PATH}/LICENSE"
    "${CURRENT_PACKAGES_DIR}/share/${PORT}/copyright"
    COPYONLY
)