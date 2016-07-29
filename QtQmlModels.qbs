import qbs;

Project {
    name: "Qt QML Models";

    Product {
        name: "libqtqmltricks-qtqmlmodels";
        type: "staticlibrary";
        targetName: "QtQmlModels";
        cpp.cxxLanguageVersion: (Qt.core.versionMajor >= 5 && Qt.core.versionMinor >= 7 ? "c++11" : "c++98");

        Export {
            cpp.includePaths: ".";
            cpp.cxxLanguageVersion: (Qt.core.versionMajor >= 5 && Qt.core.versionMinor >= 7 ? "c++11" : "c++98");

            Depends { name: "cpp"; }
            Depends {
                name: "Qt";
                submodules: ["core", "qml"];
            }
        }
        Depends { name: "cpp"; }
        Depends {
            name: "Qt";
                submodules: ["core", "qml"];
        }
        Group {
            name: "C++ sources";
            files: [
                "QQmlObjectListModel.cpp",
                "QQmlVariantListModel.cpp",
                "QQmlGadgetListModel.cpp"
            ]
        }
        Group {
            name: "C++ headers";
            files: [
                "QQmlObjectListModel.h",
                "QQmlVariantListModel.h",
                "QQmlGadgetListModel.h",
                "QtQmlTricksPlugin_SmartDataModels.h",
            ]
        }
        Group {
            qbs.install: (product.type === "dynamiclibrary");
            fileTagsFilter: product.type;
        }
    }
}
