# Download hadoop source code if it is not installed yet
if [ ! -d hadoop/dev-support ]; then 
    wget -c -O hadoop.tar.gz http://apache.claz.org/hadoop/common/hadoop-2.9.2/hadoop-2.9.2-src.tar.gz
    tar -xzf hadoop.tar.gz && rm hadoop.tar.gz
fi

# Compile hadoop with docker
# hadoop-dist && hadoop-mapreduce-core
cd hadoop/
cp ../Dockerfile dev-support/docker/
cp ../start-build-env.sh .
./start-build-env.sh

# Setup MapReduce container environment and execute mapreduce example
docker run --rm=true -it -v $(pwd)/hadoop-dist:/hadoop-dist openjdk \ 
       bash -c 'cd hadoop-dist; bash run.sh; exec "${SHELL:-sh}"'
