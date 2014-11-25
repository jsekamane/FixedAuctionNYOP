# Auction or haggling — what should the seller choose? A look at the interaction between price discovery and competition in Name-Your-Own-Price auctions.

*Abstract*

## Introduction

Which price mechanism should the seller choose? This article focuses on the selling of unique objects, i.e. where multiple buyers compete for the same object. This has traditionally been the realm of auctions (art, antiques, etc). But perhaps – and contrary to popular believe – the standard single-item auction formats are not the optimal selling methods. An alternative price mechanism is Name-Your-Own-Price (NYOP). In NYOP the buyer proposes a price. If the proposed price is above some threshold level, that is set by the seller, then the buyer gets the object at the proposed price. A previous experiment by Shapiro and Zillante (2009) shows that NYOP gives sellers higher revenue than a simple posted price mechanism. The experiment in this paper aims to answer; if using NYOP will also give higher revenue than a second-price auction? The natural follow-up question is then why. Why revenue is higher in NYOP, or why revenue is not higher? To try and answer the latter two questions, additional NYOP treatments are proposed. These treatments focus on the interaction between price discovery and competition, and how they affect the results.

This paper is structured as follows. First the various prices mechanisms (posted price, NYOP, haggling, second-price auction and buyout auction) are introduced. This section also includes a discussion of how the various price mechanisms relate to one another. This is followed by a short summary of the literature, previous experimental findings and some theoretical predictions.  Hereafter follows the full description of the experiment; its design, treatments, recruitment, participant requirements and the technical implementation. The last sections of this paper includes a recapitulation of my hypothesis and expected results from the experiment, the short-comings of the experiment, future extensions, as well as the conclusion.

## Various price mechanisms

With my experiment I would like to bridge the gab between auctions and NYOP. I will conduct an experiment that compares the revenue of an auction and NYOP. 

### Posted Price:
The simplest and most common price mechanism is a posted price (also known as listed price, or take-it-or-leave-it offer). You encounter this price mechanism everyday when going to the supermarket or a retail shop. Here the seller proposes and sets the price. The price is visible to all, and buyers can only choose to buy the item at the posted price, or choose not to buy. The item is (usually) sold to the first buyer willing to make the purchase. There is often no official count down or time limit on the offer. However, 1) if only a single and unique item is put up of for sale, then the first-come-first-served (FCFS) allocation rule imposes a sort of time pressure on competing buyers to swiftly make their purchasing decision. (If multiple items are put up for sale, and buyers desire at most one item each, then competition would be less fierce and the time pressure weaker). 2) Occasionally assortments change and unsold items are removed[^2]. While the individual seller might prefer no time limit, consumer-to-consumer marketplaces like DBA.dk, impose a limit. One motivation for this is undoubtedly that the marketplace tries to balance the buyers’ signal-to-noise ratio in terms of desirable items when browsing through items. A time limit is a simple measure restricting the accumulation of unsold and hence undesirable items. Besides the simplicity, familiarity and generality of the posted price mechanism, a main advantage is that the seller has full control over the final price. If sellers are risk averse this may be the decisive feature when picking a price mechanism. A disadvantage for sellers is the unspecific transfer date, especially if the there are costs associated with storage of the item or if the item is perishable. This of course ties into an other main disadvantage – the lack of a price discovery process. What is the optimal posted price that the seller should set? … setting too low a price and the item is sold quickly, setting too high and the item is sold slowly or not at all … the seller is uncertain about the value of the item … seller’s own valuation… the highest value among buyers … a more prevalent problem when one considers selling a single unique item.

[^2]: Often one or several price reductions are attempted before the unsold item is removed, but these dynamics are beyond the scope of this paper.

### Name-your-own-price (NYOP) and haggling:

Pros:
* Unknown value of object

NYOP: Game tree
How NYOP is similar to haggeling.
How NYOP is similar to posted price.
Buyout option

### Haggling:


### Second-price auction:

Pros:
* Revenue
* Unknown value of object
* Effeciency (allocation to buyer with highest value)
* Terminal time

### Buyout auctions:


**Risk, equilibrium, etc.**


## Litterature review

| Article                           | Mechnism              | Object    | Bidding   | Comments |
| -------------                     |:------------- :       | :-----    | :----     | :-----  |
| Shapiro and Zillante (2009)       | NYOP, Posted-price    | multiple (no competition)  | single-bid | ... |


## Experiment

### Design

To try and explain the resulting difference between auctions and NYOP, I will compare the NYOP results to three alternative NYOP treatments. My hypothesis is that two counter-acting factors, in particular, effects the results of the NYOP mechanism:

1. **Learning** or **Price discovery**. Through experience and information about previously submitted bids buyers will learn and come to form correct expectations about the seller’s threshold level. This will, everything else equal, result in buyers submitting bids that are significantly below below the posted price, and thus will have a negative effect on the seller’s expected profits.
2. **Competition**. When there are fewer objects for sale, it pressures buyers into submitting earlier bids under the NYOP, because it is the first bid above the threshold level that wins the object. The allocation rule in the NYOP is hence forward referred to as First-Come-First-Served (FCFS). The pressure to submit an earlier bid will, everything else equal, imply that buyers have less time available to discover the threshold level. And hence buyers will to a lesser extend try to shade their bids, or alternatively not at all engage in bid-shading and instead simply use the buyout option. This will have a positive effect on the seller’s expected profits. *[Competition exists in auctions formats, since here the allocation rule is that the buyer with the highest (HIGH) bid wins the auction.]*

Participants in the experiments will all play the role of buyers. The actions of the seller is carried out by a computer. The seller chooses a posted price and threshold level. The buyers are always presented to the posted price.

The values of buyers, the seller’s posted price and threshold level are all randomly drawn, similar to Shapiro and Zillante (2009).
> Each period participants’ values were chosen randomly from a uniform distribution over $[a_t , a_t + 400]$ … Values of $a_t$ were different in each of the 12 rounds of the treatments and were randomly drawn from U(0, 1600). Thus the lowest possible value distribution was U(0, 400) and the highest was U(1600, 2000). The overall range of values between 0 and 2000 … Participants received no information on the distribution of values other than the information they saw on their screens (value and … list price). …
> The seller’s posted price was set at the midpoint of the value distribution, $p_t = a_t + 200$. The seller’s marginal cost was set equal to $a_t$ . Thus … $p_t$ was equal to the monopoly price … Once the value distribution and posted prices were established threshold prices were created. The threshold values were drawn uniformly between the seller’s marginal cost, $a_t$ , and the posted price, $p_t$ …

#### Treatments

![Fig XXX: Overview of the five treatments](file:///Users/jonassekamane/Dropbox/Economics/Courses/E14/Experiments%20in%20Economics/FixedAuctionNYOP/EEPaper/Figures/Treatments.svg)

The two main treatments are; second-price auction (*AUCTION_0*) and NYOP (*NYOP_0*). 
In both buyers can repeatedly submit bids (repeated bidding). In the auction buyers can submit a higher bid out-bidding others or oneself. The auctions ends when the clock runs out, and the winner is the highest bidder. In the NYOP a buyer can submit a bid, if the bid is above the threshold level, the buyer wins the object and the auction ends. If the bid is rejected, the buyer can re-submit a new higher bid. This is the individual channel in which learning can happen. The NYOP ends once the seller receives a bid above the sellers threshold level. If no bids submitted then NYOP ends when the clock runs out.

In both treatments all previously submitted bids are visible to all (affiliated values). Buyers can use this information to form and update expectations about the value of other buyers and about the seller’s threshold level (in NYOP). This is the common channel through which learning can happen. Once the object is sold and the “auction ends”, the posted price along with the winning bid is displayed to all buyers, before the next “auction” or round initiates. This is done to avoid any confusion about the final selling price, since our interest is learning and how buyers form expectations about the treshold level. Displaying this information hopefully helps us minimise the effects of expectation errors. 
In both treatments a single unique unit is put up for sale (single unit). This together with the respective allocation rule introduces competition into both treatments. A comparison of these two treatments determines which mechanism gives the highest revenue. It is also possible to evaluate the efficiency of the two mechanisms[^1]. However this seems unproductive as the NYOP would most likely be inefficient. Efficiency in the NYOP requires that the buyer with the highest value was fastest to evaluate the posted price, form expectations and the fastest to submit a bid above the threshold level. The FCFS allocation rule in NYOP does not promote efficiency. 

[^1]: An efficient allocation is when the object is allocated to the buyer will the highest value. This is an important consideration (for instance in government held auctions) where the seller also considers the subsequent surpluses. This could either be the winning bidder’s surplus or customers of the winning bidder. This article is more aimed at art or antiques, were efficiency concerns are secondary to revenue concerns.

The three additional NYOP treatments try to disentangle the counter-acting effects of learning and competition, discussed earlier.

**Multiple unit treatment** (*NYOP_M*). 
By selling multiple units rather than a single unit the competition among buyers is reduced, while the learning and price discovery mechanism is unaffected. The latter part is archived by only displaying winning bids after the “auction end”. In the single unit case the auction ends once this unit is sold, and hence buyers can’t base their bids on a winning bid. Similarly in the multi unit case, only previously unsuccessful bids are displayed, winning bids are hidden until all units have been sold, and the the auction ends. Then the posted price and all winning bids are shown. The exact choice of number of units to sell is mostly arbitrary. A non-arbitrary choice is the same number or more units than there are buyers, as this completely eliminates competition. Minimum competition is as attended by selling N-1 units, maximum by selling 1 unit. The multiple object treatment will sell N/2 units. In this way competition changes in the multi object unit case, while learning does not. And changes in revenue will be due to increased competition among buyers.

**Single bid treatment** (*NYOP_S*).
In this treatment buyers are only allowed to submit one bid. If the bid is rejected they cannot re-submit a new. This restriction removes the buyers ability to learn the threshold level through the individual channel (i.e. by repeatedly submitting incrementally increasing bids until the threshold level is reached). It is still possible to learn through the common channel. That is, buyers can still discover the treshold level, but it requires waiting for other buyers to submit their bids, and while waiting they risk that others win the object. The number of buyers might be crucially here, since faced with more competing buyers, one will be more hesitant to wait. Competition among buyers is not affected in the single bid treatment. Changes in revenue will be due to decreased price discovery, in particular no learning takes place through the individual channel.

**Private value treatment** (*NYOP_P*).
Another way in which price discovery will change is by restricting the common channel. This the the purpose of the private value treatment. Here buyers can only see their own bids. Buyers still have the ability to learn the threshold level though the individual channel, but they now have less information about competing buyers. Comparing the results from this treatment with the previous might help to answer how buyers discover the threshold level. Whether its by individually and repeatedly submitting bids or mainly through observing what others bid. When this treatment removes the option to observe others, do buyers then submit more individual bids? And are they further from guessing the true threshold level? And ultimately what are the effects on revenue? 


### Participants: sample size and motivation.


### Technology and execution
Mozilla Labs’ TogetherJS. Platform independent (PC, Mac, Smartphone, Tablet, etc). Experiment not restricted to a lab setting, but can be executed in classrooms, cafeterias, etc. And can be executed online. Payout in cash, or using micropayment service (MobilePay, Paypal, etc).

### etc.


## Evaluating experiment -- interpreting results


## References

## Appendix


### Ulriks comments on commitment paper (DELETE THIS)
> (1) Du er nødt til at begrunde, hvorfor du kigger på single-unit, private information-auktioner. Hvis forklaringen er, at det er simplest (hvilket er en helt legitim begrundelse!), så skal du skrive det.

> (2) Du skal definere meget præcist **proceduren ved second-price auction, NYOP og fixed price selling**. Dvs. beskriv de tre procedurer i detaljer. Du skal også strukturere din litteraturgennemgang bedre og beskrive resultaterne. Hvis der eksisterer sammenligningsstudier i forvejen, så skriv evt. konklusionerne op i tabelform. (Tabeller bruges ofte i meta-studier til at give læseren et overblik over resultater og metoder i de enkelte studier.)

> (3) Du skal også tænke over, hvornår NYOP, fixed price selling og second-price auction kan være gode. Min hypotese er, at NYOP bedst fungerer, når køberens købsbeslutning kan observeres. Fx NYOP i Jensens Bøfhus fungerer - vil jeg tro - bedre, hvis kunden betaler en tjener fysisk i restauranten, end hvis køberen køber et gavekort via internettet. Og du skal også overveje, hvorfor NYOP oftest bruges på museer, og ikke så ofte på fx bettingsider på internettet. Så du skal klæde læseren på til at kunne træffe en beslutning om, **hvilken salgsmekanisme køberen skal anvende - og denne beslutning afhænger ikke kun af resultaterne fra det eksperiment**, du foreslår. Salgskonteksten (fx varen/tjenesten og markedet) spiller også en rolle. :-)

> Men ja, en god og **præcis introduktion** til din artikel og en **grundig litteraturgennemgang** vil nok være en rigtigt god idé. Og så skal du huske på Harrison-kritikken af auktionseksperimenter (dvs. incitamentsproblemer), jf. min forelæsning. http://www.jstor.org/discover/10.2307/1827930?uid=3737880&uid=2&uid=4&sid=21104236754231 Du kan også overveje i denne forbindelse at kigge nærmere på "quantal response equilibrium" (QRE) og læse om auktionseksperimenter og QRE.


# Random notes from when writing (DELETE THIS)
What are the differences and what are the similarities? 

Secondly, risk and uncertainty come into play. No information about other bids may feel like increased competing pressure, and buyer might choose to submit higher bids in this case.  (Risk, risk adverse).