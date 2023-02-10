<script setup>
import { ref, onActivated, onMounted, onDeactivated } from "vue";
import ChildComponent from "./ChildComponent.vue";

const child = ref(null);
onMounted(() => {
  console.log(child.value);
  console.log(child.value.num);
  child.value.num = 1;
});

// 调用时机为首次挂载 以及每次从缓存中被重新插入时
onActivated(() => {
  console.log("组件从缓存树被重新插入DOM中");
});
// 在从 DOM 上移除、进入缓存  以及组件卸载时调用
onDeactivated(() => {
  console.log("从DOM中移除组件");
});
</script>

<template>
  <child-component ref="child" />
</template>

<style scoped></style>
