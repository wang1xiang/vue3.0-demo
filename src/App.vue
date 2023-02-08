<script setup>
import ListenerComponent from "./components/ListenerComponent.vue";
import TemplateReference from "./components/TemplateReference.vue";
// 1. ref + function
// import { ref } from "vue";
// const num1 = ref(0);
// const num2 = ref(0);
// const result = ref(0);

// const add = () => (result.value = parseInt(num1.value) + parseInt(num2.value));

// 2. ref + computed
// import { ref, computed } from "vue";
// const num1 = ref(0);
// const num2 = ref(0);
// const result = computed(() => parseInt(num1.value) + parseInt(num2.value));

// 3. reactive

import { reactive, computed } from "vue";

const state = reactive({
  num1: 0,
  num2: 0,
  result: computed(() => parseInt(state.num1) + parseInt(state.num2)),
});
</script>

<template>
  <ListenerComponent />
  <br />
  <TemplateReference />
  <!-- <input type="text" v-model="state.num1" />
  <span>+</span>
  <input type="text" v-model="state.num2" />
  <span>=</span>
  <input type="text" v-model="state.result" /> -->
</template>

<style scoped></style>
