# Ruby Performance Tricks

Accidentally, I sent http://greyblake.com/blog/2012/09/02/ruby-perfomance-tricks/ as a Friday Link without checking whether it is still up-to-date (it was published in late 2012 with ruby 1.9.3). So:

1. Props to the Sergey Potapov, the original author.
2. I will check, whether it is till of use for us in March 2018.

As it turned out, the results of that article are still useful and its results still apply for ruby `2.5.0`, even though the small some gaps where cut in half (still 25% or way more).

## Folder Structure

- `benchmarks/` contains all the scripts to be run as `ruby benchmarks/<BENCHMARK>`.
- `reports/<VERSION>/` contains the results of the corresponding ruby version.

## Running the Benchmarks

Simply run `./create_reports <OUT_DIR>` with an optional output directory (within `reports/`) as an argument where the results will be stored in. If the argument is omitted, the results will be stored in `reports/tmp`. This script runs all the scripts inside `benchmarks/` and stores their results in `reports/<OUT_DIR>` in files named corresponding to their script.

The included benchmarks (versions `2.3.5` and `2.5.0`) were run on an early-2011 MacBook Pro with an i7-2620M, 16GB of 1333MHz RAM and an Samsung 850 EVO SSD on macOS.
