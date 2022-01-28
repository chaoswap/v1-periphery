// SPDX-License-Identifier: GPL-2.0-or-later
import '@chaoswap/v1-core/contracts/interfaces/IChaoswapV1Pool.sol';

pragma solidity >=0.6.0;

import '../libraries/PoolTicksCounter.sol';

contract PoolTicksCounterTest {
    using PoolTicksCounter for IChaoswapV1Pool;

    function countInitializedTicksCrossed(
        IChaoswapV1Pool pool,
        int24 tickBefore,
        int24 tickAfter
    ) external view returns (uint32 initializedTicksCrossed) {
        return pool.countInitializedTicksCrossed(tickBefore, tickAfter);
    }
}
