import qbs;

Project {
    name: "Qt QML Models";

    Product {
        name: "qt-qml-models";
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
            name: "C++ sources";
            files: [
                "qqmlobjectlistmodel.cpp",
                "qqmlvariantlistmodel.cpp",
            ]
        }
        Group {
            name: "C++ headers";
            files: [
                "qqmlmodels.h",
                "qqmlobjectlistmodel.h",
                "qqmlvariantlistmodel.h",
                "qqmlvariantlistmodel_p.h",
            ]
        }
        Group {
            qbs.install: true;
            fileTagsFilter: product.type;
        }
    }
}
