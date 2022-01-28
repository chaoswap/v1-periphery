import { abi as POOL_ABI } from '@chaoswap/v1-core/artifacts/contracts/ChaoswapV1Pool.sol/ChaoswapV1Pool.json'
import { Contract, Wallet } from 'ethers'
import { IChaoswapV1Pool } from '../../typechain'

export default function poolAtAddress(address: string, wallet: Wallet): IChaoswapV1Pool {
  return new Contract(address, POOL_ABI, wallet) as IChaoswapV1Pool
}
