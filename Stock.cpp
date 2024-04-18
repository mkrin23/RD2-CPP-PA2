#include "Stock.h"

Stock::Stock(){
};

std::vector<TradeInfo> Stock::getAllTradeInfo() const {
    return mTradeInfo;
}

void Stock::setAllTradeInfo(const std::vector<TradeInfo> &tradeInfo){
    mTradeInfo = tradeInfo;
};

std::vector<TradeInfo> Stock::getTrades(unsigned int interval = TRADE_INTERVAL_DAY){
    std::vector<TradeInfo> ret;
    
    TradeInfo tiSave;
    double open, high = 0, low = 0, close, volume = 0;
    bool bOpen = 1;
    for(TradeInfo ti : mTradeInfo){
        if(bOpen){
            tiSave.setOpen(ti.getOpen());
            tiSave.setDateTime(ti.getDateTime());

            bOpen = 0;
        }

        close = ti.getClose();

        high = (ti.getHigh() > high) ? ti.getHigh() : high;
        low = (ti.getLow() < low) ? ti.getLow() : low;

        volume += ti.getVolume();



    }

};


