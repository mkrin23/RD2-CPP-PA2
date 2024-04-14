#ifndef TRADELOADER_H
#define TRADELOADER_H

#include <array>
#include <string>
#include <vector>
<<<<<<< HEAD

=======
>>>>>>> c0b9205555930422b2f4f9d72bb9553b99e4597f
#include "TradeInfo.h"

class TradeLoader
{
<<<<<<< HEAD
public:
    TradeLoader();

    void load(const std::string& filename);

    std::vector<std::array<std::string, 6> > getData() { return mData; }

    std::vector<TradeInfo> getTradeInfo();

private:
    std::array<std::string, 6> split(const std::string& line, char delim);

private:
    std::vector<std::array<std::string, 6> > mData;
};

#endif // TRADELOADER_H
=======

public:

TradeLoader();
void load(const std::string& filename);

std::vector<std::array<std::string, 6> > getData() { return mData; }
std::vector<TradeInfo> getTradeInfo();

private:

std::array<std::string, 6> split(const std::string& line, char delim);

private:

std::vector<std::array<std::string, 6> > mData;

};

#endif // TRADELOADER_H


>>>>>>> c0b9205555930422b2f4f9d72bb9553b99e4597f
