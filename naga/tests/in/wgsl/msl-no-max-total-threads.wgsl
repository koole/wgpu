@group(0) @binding(0) var<storage, read_write> values: array<f32>;

@compute @workgroup_size(64)
fn main(@builtin(global_invocation_id) id: vec3<u32>) {
    values[id.x] = f32(id.x);
}
