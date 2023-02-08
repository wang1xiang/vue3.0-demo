<script setup>
import { ref, onMounted } from "vue";

// 1. 字符串引用
// const input = ref(null);
// onMounted(() => {
//   console.log(input.value.focus());
// });
const visible = ref(true);
onMounted(() => {
  setTimeout(() => (visible.value = false), 2000);
});
</script>

<template>
  <!-- <input type="text" ref="input" /> -->
  <!-- 2. 函数引用 -->
  <input v-if="visible" type="text" :ref="(el) => el.focus()" />
</template>

<style scoped></style>
