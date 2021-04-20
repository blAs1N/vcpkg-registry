vcpkg_from_github (
	OUT_SOURCE_PATH SOURCE_PATH
	REPO blAs1N/BSMath
	REF 7614efecbb579f83bd8f869f41af37b19c6c9e9c
	SHA512 e433f1313539700c7f1a474f8cbaedf130853a7c5de99b1f56a834c72a55be81fee478ca98a86be128ceb615de13cc1148609fb74e6d20936705c5bb5380e978
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