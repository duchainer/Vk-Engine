#!/usr/bin/env sh

#
# Compile the Vulkan
#
pushd ..
git clone git@github.com:GPUOpen-LibrariesAndSDKs/VulkanMemoryAllocator.git
pushd VulkanMemoryAllocator
cmake -S . -B build
cmake --install build --prefix build/install
make .
# Back to the root of the repo
popd
popd

#
# Compile JoltPhysics
#
pushd Modules/JoltPhysics/JoltC/
cmake .
make .
# Back to the root of the repo
popd
