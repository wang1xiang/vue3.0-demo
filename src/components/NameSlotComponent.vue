<template>
  <div>
    <header>
      <slot name="header" :text="header.text" :color="header.color"></slot>
    </header>
    <main><slot :text="content.text" :color="content.color"></slot></main>
    <footer>
      <slot name="footer" :text="footer.text" :color="footer.color"></slot>
    </footer>
  </div>
</template>

<script setup>
import { ref } from "vue";

const header = ref({
  text: "子组件默认header",
  color: "#c30",
});
const content = ref({
  text: "子组件默认content",
  color: "rgba(0,0,0,0.85)",
});
const footer = ref({
  text: "子组件默认footer",
  color: "rgba(0,0,0,0.45)",
});
</script>
