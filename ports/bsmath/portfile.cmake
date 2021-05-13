vcpkg_from_github (
	OUT_SOURCE_PATH SOURCE_PATH
	REPO blAs1N/BSMath
	REF 4d7fb7bfbd8656edc2a24a46ac08a52fd7b05845
	SHA512 2eca7dc36059e7d2cb85d174052f90f834159a6fba1f2df09d9d2352aaaafd692bfce54d4ef2ce5f1480d52230cdf9e56171fe64dc0e90ab9795656134676fcf
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