cd
git clone https://github.com/cryptonomex/graphene.git
cd graphene
git submodule update --init --recursive
cmake -DCMAKE_BUILD_TYPE=Debug .
make