vcpkg_from_github (
	OUT_SOURCE_PATH SOURCE_PATH
	REPO blAs1N/BSBase
	REF 42d52294ad0797ed8b4bddad19d44122b6e88c20
	SHA512 4078d38c12e99684013245fde9fa30fe90f1d74d9a268ff7c1ca53c9f90ea76638b31063e9965adb226ae9484c15fbb1c1147879f6a19af9e8f3161d4269083a
	HEAD_REF master
)

vcpkg_configure_cmake (
	SOURCE_PATH "${SOURCE_PATH}"
	PREFER_NINJA
)

vcpkg_install_cmake ()
vcpkg_fixup_cmake_targets ()

file (REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

file(GLOB DEBUGS "${CURRENT_PACKAGES_DIR}/debug")
list(LENGTH DEBUGS DEBUG_LEN)

if(DEBUG_LEN EQUAL 0)
	file (REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug")
endif()

configure_file (
    "${SOURCE_PATH}/LICENSE"
    "${CURRENT_PACKAGES_DIR}/share/${PORT}/copyright"
    COPYONLY
)