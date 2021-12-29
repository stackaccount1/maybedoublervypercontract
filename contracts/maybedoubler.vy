
# @version ^0.2.0

owner: address

@external
def __init__():
    self.owner = msg.sender

@external
@payable 
def mayberdoubler():
	assert self.balance >= msg.value * 2, "contract not funded"
	if block.timestamp % 2 == 0:
		send(msg.sender, msg.value * 2)

@external
@payable
def fundcontract():
	assert msg.value > 0, "contract funded"
	
@external
def cashbalance():
	selfdestruct(self.owner)
