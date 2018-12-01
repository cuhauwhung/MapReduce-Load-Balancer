# MapReduce-Load-Balancer

    git clone git@github.com:michaelchen110/MapReduce-Load-Balancer.git

## Start
Setup Compile Environment in Docker for Hadoop and Compile Example Code

    ./setup.sh 
    
## Execute MR examples in Openjdk container
    docker run --rm=true -it \
            -v $(pwd)/hadoop/hadoop-dist:/hadoop-dist openjdk \
            bash -c 'cd hadoop-dist; exec "${SHELL:-sh}"'
    bash run.sh [example_dir] [output_dir]

## Reference
https://github.com/apache/hadoop/blob/trunk/BUILDING.txt
