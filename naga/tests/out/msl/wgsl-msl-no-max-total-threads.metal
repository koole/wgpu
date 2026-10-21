// language: metal2.1
#include <metal_stdlib>
#include <simd/simd.h>

using metal::uint;

struct _mslBufferSizes {
    uint size0;
};

typedef float type_1[1];

struct main_Input {
};
kernel void main_(
  metal::uint3 id [[thread_position_in_grid]]
, device type_1& values [[user(fake0)]]
, constant _mslBufferSizes& _buffer_sizes [[user(fake0)]]
) {
    values[id.x] = static_cast<float>(id.x);
    return;
}
