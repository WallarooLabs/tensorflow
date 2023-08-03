"""Provides the repository macro to import Eigen."""

load("//third_party:repo.bzl", "tf_http_archive", "tf_mirror_urls")

def repo():
    """Imports Eigen."""

    # Attention: tools parse and update these lines.
    # LINT.IfChange
<<<<<<< HEAD
    EIGEN_COMMIT = "b0f877f8e01e90a5b0f3a79d46ea234899f8b499"
    EIGEN_SHA256 = "bdb1353ba33a5a7a5caadf822057ac1f0254ba2c5e70512dd1ec20cbb64e2f6c"
=======
    EIGEN_COMMIT = "66e8f38891841bf88ee976a316c0c78a52f0cee5"
    EIGEN_SHA256 = "01fcd68409c038bbcfd16394274c2bf71e2bb6dda89a2319e23fc59a2da17210"
>>>>>>> 958faeb3dc3 (Update Eigen to commit:66e8f38891841bf88ee976a316c0c78a52f0cee5)
    # LINT.ThenChange(//tensorflow/lite/tools/cmake/modules/eigen.cmake)

    tf_http_archive(
        name = "eigen_archive",
        build_file = "//third_party/eigen3:eigen_archive.BUILD",
        sha256 = EIGEN_SHA256,
        strip_prefix = "eigen-{commit}".format(commit = EIGEN_COMMIT),
        urls = tf_mirror_urls("https://gitlab.com/libeigen/eigen/-/archive/{commit}/eigen-{commit}.tar.gz".format(commit = EIGEN_COMMIT)),
    )
