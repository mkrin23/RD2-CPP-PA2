#include <iomanip>
#include <iostream>

#include "DateTime.h"
#include "TradeLoader.h"
#include "Stock.h"
#include "TradeInfo.h"

int main() {
    TradeLoader tl;
    tl.load("/home/marius/Documents/RD2-CPP/PA2 - Aktie/Datafiler Aktiekurser/COLOB.DKDKK_Candlestick_1_M_BID_01.01.2017-31.12.2017.csv");
    Stock st(tl.getTradeInfo());
    std::vector<TradeInfo> all = st.getAllTradeInfo();
    std::vector<TradeInfo> day = st.getTrades(6);

    std::cout << "all: " << all.size() << "\t day: "<<day.size() << std::endl;
    // for(TradeInfo ti : day){
    //     std::cout << ti.getDateTime().getDay() << std::endl;
    // }

    return 0;
}