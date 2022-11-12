var token = artifacts.require("./KaseiCoin.sol");

module.exports = function (deployer)
{
    deployer.deploy(token, "Kasei", "KAI", 100000);
};


//var crowdsale = artifacts.require("./KaseiCoinCrowdsale");

//module.exports = function (deployer)
//{
//    const token_address = "0xf96CA23381edc08B2AdF1CC0261fa51eDE06cF0d";
//    deployer.deploy(crowdsale, 1, token_address, token);
//};