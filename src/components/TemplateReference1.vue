<script setup>
import { ref, onMounted } from "vue";
import ChildComponent from "./ChildComponent.vue";

const child = ref(null);
onMounted(() => {
  console.log(child.value);
  console.log(child.value.num);
  child.value.num = 1;
});
</script>

<template>
  <child-component ref="child" />
</template>

<style scoped></style>
