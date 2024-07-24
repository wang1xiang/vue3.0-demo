<template>
  <div>子组件收到的值：{{ message }}</div>
  <ChildChild />
</template>

<script setup>
import { inject } from "vue";
import ChildChild from "./ChildChild.vue";

const message = inject("message");
</script>
