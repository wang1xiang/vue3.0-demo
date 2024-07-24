<template>
  <div>父组件提供的值：{{ count }}</div>
  <button @click="() => count++">修改</button>
  <Child></Child>
</template>

<script setup>
import { provide, ref, readonly } from "vue";
import Child from "./components/Child.vue";

const count = ref(0);
// 避免后代组件更改 使用readonly来包装
provide(/* 注入名 */ "message", /* 值 */ readonly(count));
</script>
