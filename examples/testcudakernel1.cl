float _Z3barff(float a, float b) {
label0:;
float v0 = a + b;
return v0;
}

kernel void _Z3fooPf(global float* data) {
label0:;
data[0] = 123;
}

kernel void _Z7use_tidPf(global float* data) {
label0:;
int v0 = get_global_id(0);
long v1 = v0;
global float* v2 = data + v1;
v2[0] = 123;
}

kernel void _Z8use_tid2Pi(global int* data) {
label0:;
int v0 = get_global_id(0);
long v1 = v0;
global int* v2 = data + v1;
int v3 = v2[0];
int v4 = v3 + v0;
v2[0] = v4;
}

kernel void _Z10copy_floatPf(global float* a) {
label0:;
global float* v0 = a + 1;
global int*v1 = (global int*)v0;
int v2 = v1[0];
global int*v3 = (global int*)a;
v3[0] = v2;
}

kernel void _Z11use_blockidPf(global float* data) {
label0:;
int v0 = get_group_id(0);
long v1 = v0;
global float* v2 = data + v1;
v2[0] = 123;
}

kernel void _Z11use_griddimPf(global float* data) {
label0:;
int v0 = get_num_groups(0);
long v1 = v0;
global float* v2 = data + v1;
v2[0] = 123;
}

kernel void _Z12use_blockdimPf(global float* data) {
label0:;
int v0 = get_local_size(0);
long v1 = v0;
global float* v2 = data + v1;
v2[0] = 123;
}
