<script setup>
import { reactive, ref, watch } from "vue";

const num1 = ref(0);
const num2 = ref(0);
const result = ref(0);

// 1. watch监听单个ref
watch(num1, (newNum1) => {
  console.log("newNum1", newNum1);
});
// 2. watch监听getter
watch(
  () => parseInt(num1.value) + parseInt(num2.value),
  (sum) => {
    console.log("sum", sum);
    result.value = sum;
  }
);
// 3. watch监听多个数据源
watch([num1, num2], ([newNum1, newNum2]) => {
  console.log("newNum1 = ", newNum1, "newNum2 = ", newNum2);
  result.value = parseInt(newNum1) + parseInt(newNum2);
});

const state = reactive({
  num1: 0,
  num2: 0,
  result: 0,
});

// 4. watch监听响应式对象 默认开启深度侦听
watch(state, (newState, oldState) => {
  console.log("newState", newState);
  // 返回true 因为指向同一个对象
  console.log(newState === oldState);
});

// 不能直接监听响应式对象的属性值，需要返回该属性的getter函数
watch(
  [() => state.num1, () => state.num2],
  ([newNum1, newNum2]) => {
    console.log("newNum1 = ", newNum1, "newNum2 = ", newNum2);
    state.result = parseInt(newNum1) + parseInt(newNum2);
  },
  // 侦听器创建后立即执行 且当属性值改变时再次执行
  { immediate: true }
);
</script>

<template>
  <div class="container">
    <input type="text" v-model="num1" />
    <span>+</span>
    <input type="text" v-model="num2" />
    <span>=</span>
    <input type="text" v-model="result" />
  </div>
  <br />
  <div>响应式对象</div>
  <br />
  <div class="container">
    <input type="text" v-model="state.num1" />
    <span>+</span>
    <input type="text" v-model="state.num2" />
    <span>=</span>
    <input type="text" v-model="state.result" />
  </div>
</template>

<style scoped>
.container {
  display: flex;
}
</style>
