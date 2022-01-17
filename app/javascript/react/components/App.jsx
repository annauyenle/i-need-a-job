import React from "react";
import { Routes, Route } from "react-router-dom";
import Layout from "./Layout";
import JobPage from "./JobPage";
import ActivityPage from "./ActivityPage";

const App = () => {
  return (
    <Routes>
      <Route path="/" element={<Layout />}>
        <Route index element={<JobPage />} />
        <Route path="activity" element={<ActivityPage />} />
      </Route>
    </Routes>
  );
};

export default App;
