<template>
  <div class="child"></div>
  <button class="button" v-bind="$attrs">Button</button>
  <button class="button" v-bind="attrs">Button2</button>
</template>

<script setup>
import { useAttrs } from "vue";

const attrs = useAttrs();
console.log(attrs);
</script>
<style scoped>
.child {
  color: #c30;
}
.button {
  border-radius: 4px;
}
</style>
