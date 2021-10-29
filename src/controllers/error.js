exports.getError = (req, res, next) => {
  res.status(404).render("error", {
    pageTitle: "404",
    path: "/error",
    isAuthenticated: req.session.isLogedin,
  });
};
