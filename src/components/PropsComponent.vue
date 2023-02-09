<template>
  <h4>{{ title }}</h4>
  <button @click="() => emit('change-title', '修改Title')">修改title</button>
</template>

<script setup>
defineProps(["title"]);
const emit = defineEmits(["change-title"]);
</script>

<style lang="scss" scoped></style>
