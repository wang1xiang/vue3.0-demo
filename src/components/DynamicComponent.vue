<template>
  <div>
    <button
      v-for="btn in buttons"
      :key="btn.name"
      @click="currentComp = btn.comp"
    >
      {{ btn.name }}
    </button>
  </div>
  <keep-alive>
    <component :is="currentComp" />
  </keep-alive>
</template>

<script setup>
import { shallowRef } from "vue";
import TemplateReference from "./TemplateReference.vue";
import TemplateReference1 from "./TemplateReference1.vue";

const buttons = shallowRef([
  {
    name: "组件A",
    comp: TemplateReference,
  },
  {
    name: "组件B",
    comp: TemplateReference1,
  },
]);
const currentComp = shallowRef(TemplateReference);
</script>
