from brownie import maybedoubler, network, config
from scripts.helpful_scripts import (
    get_account,
    LOCAL_BLOCKCHAIN_ENVIRONMENTS,
)


def deploy_md():
    account = get_account()
    account.deploy(maybedoubler)
    print(account)
    return(maybedoubler)

def main():
    deploy_md()