<template>
  <div>
    <input type="text" v-model="num" />
  </div>
</template>

<script setup>
import { ref } from "vue";

const num = ref(0);
// 子组件需要通过defineExpose暴露出num
defineExpose({
  num,
});
</script>

<style lang="scss" scoped></style>
