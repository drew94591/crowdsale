pragma solidity ^0.5.5;

import "./KaseiCoin.sol";
import "@openzeppelin/contracts/crowdsale/Crowdsale.sol";
import "@openzeppelin/contracts/crowdsale/emission/MintedCrowdsale.sol";
import "@openzeppelin/contracts/crowdsale/validation/CappedCrowdsale.sol";
import "@openzeppelin/contracts/crowdsale/validation/TimedCrowdsale.sol";
import "@openzeppelin/contracts/crowdsale/distribution/RefundablePostDeliveryCrowdsale.sol";

contract KaseiCoinCrowdsale is
    Crowdsale,
    MintedCrowdsale,
    CappedCrowdsale,
    TimedCrowdsale,
    RefundablePostDeliveryCrowdsale
{
    constructor(
        uint256 rate,
        address payable wallet,
        KaseiCoin token,
        uint256 goal,
        uint256 open,
        uint256 close
    )
        public
        Crowdsale(rate, wallet, token)
        CappedCrowdsale(goal)
        TimedCrowdsale(open, close)
        RefundableCrowdsale(goal)
    {
        // constructor can stay empty
    }
}

contract KaseiCoinCrowdsaleDeployer {
    address public kasei_token_address;
    address public kasei_crowdsale_address;

    constructor(
        string memory name,
        string memory symbol,
        address payable wallet,
        uint256 goal
    ) public {
        KaseiCoin token = new KaseiCoin(name, symbol, 0);
        kasei_token_address = address(token);
        KaseiCoinCrowdsale kasei_crowdsale = new KaseiCoinCrowdsale(
            1,
            wallet,
            token,
            goal,
            now,
            now + 24 weeks
        );
        kasei_crowdsale_address = address(kasei_crowdsale);
        token.addMinter(kasei_crowdsale_address);
        token.renounceMinter();
    }
}
