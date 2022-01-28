# chaoswap V3 Periphery

[![Tests](https://github.com/chaoswap/chaoswap-v1-periphery/workflows/Tests/badge.svg)](https://github.com/chaoswap/chaoswap-v1-periphery/actions?query=workflow%3ATests)
[![Lint](https://github.com/chaoswap/chaoswap-v1-periphery/workflows/Lint/badge.svg)](https://github.com/chaoswap/chaoswap-v1-periphery/actions?query=workflow%3ALint)

This repository contains the periphery smart contracts for the chaoswap V3 Protocol.
For the lower level core contracts, see the [chaoswap-v1-core](https://github.com/chaoswap/v1-core)
repository.

## Bug bounty

This repository is subject to the chaoswap V3 bug bounty program,
per the terms defined [here](./bug-bounty.md).

## Local deployment

In order to deploy this code to a local testnet, you should install the npm package
`@chaoswap/v1-periphery`
and import bytecode imported from artifacts located at
`@chaoswap/v1-periphery/artifacts/contracts/*/*.json`.
For example:

```typescript
import {
  abi as SWAP_ROUTER_ABI,
  bytecode as SWAP_ROUTER_BYTECODE,
} from '@chaoswap/v1-periphery/artifacts/contracts/SwapRouter.sol/SwapRouter.json'

// deploy the bytecode
```

This will ensure that you are testing against the same bytecode that is deployed to
mainnet and public testnets, and all chaoswap code will correctly interoperate with
your local deployment.

## Using solidity interfaces

The chaoswap v3 periphery interfaces are available for import into solidity smart contracts
via the npm artifact `@chaoswap/v1-periphery`, e.g.:

```solidity
import '@chaoswap/v1-periphery/contracts/interfaces/ISwapRouter.sol';

contract MyContract {
  ISwapRouter router;

  function doSomethingWithSwapRouter() {
    // router.exactInput(...);
  }
}

```
