<template>
  <div class="child" @click="handleClick">
    子元素
    <button class="button" @click="$attrs.onClick">Button</button>
  </div>
</template>

<script>
export default {
  // 设置为false时 透传的attributes不会自动继承 此时通过$attrs访问
  inheritAttrs: false,
};
</script>
<script setup>
import { useAttrs } from "vue";

const handleClick = () => console.log("子组件handleClick");
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
