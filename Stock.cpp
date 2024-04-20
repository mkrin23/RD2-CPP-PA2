#include "Stock.h"
#include <iostream>

Stock::Stock(){
};

std::vector<TradeInfo> Stock::getAllTradeInfo() const {
    return mTradeInfo;
}

void Stock::setAllTradeInfo(const std::vector<TradeInfo> &tradeInfo){
    mTradeInfo = tradeInfo;
};

std::vector<TradeInfo> Stock::getTrades(unsigned int interval){
    std::vector<TradeInfo> ret;
    TradeInfo ti;
    
    double open, high = 0, low = 0, close, volume = 0;
    bool bOpen = 1;
    int i = 0;
    for(auto it = mTradeInfo.begin(); it != mTradeInfo.end(); ++it){
        if(bOpen){
            ti.setOpen((*it).getOpen());
            ti.setDateTime((*it).getDateTime());

            bOpen = 0;
        }

        close = (*it).getClose();

        high = ((*it).getHigh() > high) ? (*it).getHigh() : high;
        low = ((*it).getLow() < low) ? (*it).getLow() : low;

        volume += (*it).getVolume();

        if( (interval == TRADE_INTERVAL_MINUTE && ((*it).getDateTime().getMinute() > ti.getDateTime().getMinute() ||
                                                   (*it).getDateTime().getHour() > ti.getDateTime().getHour() ||
                                                   (*it).getDateTime().getDay() > ti.getDateTime().getDay() ||
                                                   (*it).getDateTime().getMonth() > ti.getDateTime().getMonth() ||
                                                   (*it).getDateTime().getYear() > ti.getDateTime().getYear())) ||
            (interval == TRADE_INTERVAL_HOUR && ((*it).getDateTime().getHour() > ti.getDateTime().getHour() ||
                                                 (*it).getDateTime().getDay() > ti.getDateTime().getDay() ||
                                                 (*it).getDateTime().getMonth() > ti.getDateTime().getMonth() ||
                                                 (*it).getDateTime().getYear() > ti.getDateTime().getYear())) ||
            (interval == TRADE_INTERVAL_2HOUR && ((*it).getDateTime().getHour() > (ti.getDateTime().getHour()+1) ||
                                                 (*it).getDateTime().getDay() > ti.getDateTime().getDay() ||
                                                 (*it).getDateTime().getMonth() > ti.getDateTime().getMonth() ||
                                                 (*it).getDateTime().getYear() > ti.getDateTime().getYear())) ||
            (interval == TRADE_INTERVAL_4HOUR && ((*it).getDateTime().getHour() > (ti.getDateTime().getHour()+3) ||
                                                 (*it).getDateTime().getDay() > ti.getDateTime().getDay() ||
                                                 (*it).getDateTime().getMonth() > ti.getDateTime().getMonth() ||
                                                 (*it).getDateTime().getYear() > ti.getDateTime().getYear())) ||
            (interval == TRADE_INTERVAL_DAY && ((*it).getDateTime().getDay() > ti.getDateTime().getDay() ||
                                                (*it).getDateTime().getMonth() > ti.getDateTime().getMonth() ||
                                                (*it).getDateTime().getYear() > ti.getDateTime().getYear()))
           ){
            ti.setClose((*it).getClose());
            ti.setHigh(high);
            high = 0;
            ti.setLow(low);
            low = 0;
            ti.setVolume(volume);
            volume = 0;

            ret.push_back(ti);

            ++i;
            bOpen = 1;
        }

    }
    return ret;
};


