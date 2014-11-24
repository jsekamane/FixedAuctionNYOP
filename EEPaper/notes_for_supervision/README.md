# NOTES FOR SUPERVISION


## Competition
Two ways in which to create competition among multiple buyers, when selling one unqiue good / single-unit:

* The highest bid wins (HIGH).
* The first bid wins. Or first come, first served (FCFS).

Snipping behaviour could diminish effects of competition (risk loving).


## Threshold level / reserve price
Threshold level and reserve prices is the same thing here.

* In FCFS: *threshold level*. Secret threshold level is needed to discourage buyers from instantaneously bidding zero.
* In HIGH: *reserve price*. Reserve price not strictly needed. Actually complicates setup/calculations. But an secret reserve price is used to make HIGH setting easily comparable to FCFS setting.

By "secret" I mean: The threshold level or reserve prices is not directly revealed to buyers. Although in the repeated-bidding the threshold level can be deduced from previously rejected bids.


## Bidding
* Single bid: Buyers have one bid. If this bid is rejected they are not allowed to submit a new bid.
* Repeated bidding: If a buyer's bid is rejected, he can submit a new bid. Buyers can bid as many times as they like. 

Single bid/repeated bidding is not relevant when only the BUY option. No treatmeant for HIGH (but included for comparison) -- instead calculate based on the buyers' assigned values who would wins, e.g. find who has the highest value.

Trade-off for buyers in repeated-bidding, FCFS setting; 

- submit lower initial bid, possibly above threshold level, which would give the buyer a higher payoff.
- but also higher probability of rejection; rejecting and resubmitting new bid is wasted time, in which other buyers might "beat you to the punch".

Price/Bidding rule: The winner pays the second highest price, since this rule is the common theoretical benchmark. 

* Prehaps implemented by having proxy bidding; bids increase incrementally, but buyers can submit thier MAX BID. [Could also possible overcome issuses regarding snipping, if MAX BIDs are evaluated when bidding ends?]. 
* 

## Infomation
* Private values: Buyer can see all ones own previously rejected bids.
* Affiliated values: Buyer can see all (own+others) previously rejected bids.

Infomation about other bids might be decisive when having to determine the effect of competition. Since one would expect that more infomation about competitiors bids/behavior will lead to fiercer competition.


## Complications
* The time preference/impatience of buyers:
* The buyers' attitutes towards risk: 