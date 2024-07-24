<template>
  <div>孙组件收到的值：{{ message }}</div>
</template>

<script setup>
import { inject, onMounted } from "vue";
const message = inject("message");
onMounted(() => {
  show();
  message.value = 22;
});
</script>
