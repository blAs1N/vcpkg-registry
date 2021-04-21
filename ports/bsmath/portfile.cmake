vcpkg_from_github (
	OUT_SOURCE_PATH SOURCE_PATH
	REPO blAs1N/BSMath
	REF b020eafb95f9695b153b6f1cbbfbc2aad7ac4696
	SHA512 9996641c035c9c19da2eae399a89930789612eb6baa356a4ec205f8a05ff2af1b502da2b33147b9e965b2de6d1e642c91d4e14a97d3490ef5ea1069d0c55f961
	HEAD_REF master
)

vcpkg_configure_cmake (
	SOURCE_PATH "${SOURCE_PATH}"
	PREFER_NINJA
)

vcpkg_install_cmake ()

file (REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

file(GLOB DEBUGS "${CURRENT_PACKAGES_DIR}/debug/")
list(LENGTH DEBUGS DEBUG_LEN)

if(DEBUG_LEN EQUAL 0)
	file (REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug")
endif()

configure_file (
    "${SOURCE_PATH}/LICENSE"
    "${CURRENT_PACKAGES_DIR}/share/${PORT}/copyright"
    COPYONLY
)