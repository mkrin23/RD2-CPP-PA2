cmake_minimum_required(VERSION 3.0.0)
project(Aktiekurs VERSION 0.1.0 LANGUAGES C CXX)

include(CTest)
enable_testing()

add_executable(Aktiekurs main.cpp
    DateTime.h DateTime.cpp
    TradeInfo.h TradeInfo.cpp
    TradeLoader.h TradeLoader.cpp
    Stock.h Stock.cpp)

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
