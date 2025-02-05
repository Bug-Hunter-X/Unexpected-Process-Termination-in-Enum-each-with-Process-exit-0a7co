# Elixir Enum.each and Process.exit Bug

This repository demonstrates a subtle bug related to the use of `Enum.each` and `Process.exit` in Elixir.  The provided code snippet demonstrates a scenario where premature process termination occurs, interrupting the execution of `Enum.each` before it completes processing the entire list. This is a common error in concurrent Elixir programs if not handled appropriately. The solution shows how to refactor this issue.

## How to Reproduce

1. Clone this repository.
2. Navigate to the root directory.
3. Run `elixir bug.ex`.

You will observe that the program prints only '1', '2' and then terminates, without processing the rest of the list.  This is because `Process.exit(self(), :normal)` terminates the current process, stopping the `Enum.each` iteration. 

## Solution
The solution shows a different approach avoiding `Process.exit` within the loop.
