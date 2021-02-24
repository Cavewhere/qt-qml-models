import qbs;

Project {
    name: "Qt QML Models";

    Product {
        name: "libqtqmltricks-qtqmlmodels";
        type: "staticlibrary";
        targetName: "QtQmlModels";

        Export {
            cpp.includePaths: ".";

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
            name: "C++ template sources";
            fileTags: ["txt"]
            files: [
                "QQmlObjectListModel.cpp",
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
            name: "C++ sources"
            files: [
                "QQmlVariantListModel.cpp",
            ]
        }

        Group {
            qbs.install: (product.type === "dynamiclibrary");
            fileTagsFilter: product.type;
        }
    }
}
